package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class TimeoutFuture<V> extends FluentFuture.TrustedFuture<V> {

    @CheckForNull
    private ListenableFuture<V> delegateRef;

    @CheckForNull
    private ScheduledFuture<?> timer;

    /* loaded from: classes2.dex */
    public static final class Fire<V> implements Runnable {

        @CheckForNull
        TimeoutFuture<V> timeoutFutureRef;

        public Fire(TimeoutFuture<V> timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            TimeoutFuture<V> timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (listenableFuture = ((TimeoutFuture) timeoutFuture).delegateRef) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (listenableFuture.isDone()) {
                timeoutFuture.setFuture(listenableFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = ((TimeoutFuture) timeoutFuture).timer;
                ((TimeoutFuture) timeoutFuture).timer = null;
                String obfuscatedString = new ObfuscatedString(new long[]{7954862137459875478L, -8652231690025463827L, -9155999700910768642L}).toString();
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            String valueOf = String.valueOf(obfuscatedString);
                            StringBuilder sb = new StringBuilder(valueOf.length() + 66);
                            sb.append(valueOf);
                            sb.append(new ObfuscatedString(new long[]{185085422809131859L, 3139229811639085678L, -3236991669839378920L, 6808004898309400493L}).toString());
                            sb.append(abs);
                            sb.append(new ObfuscatedString(new long[]{4270912037413889293L, -8800758608633917075L, -9094691909204285943L, 7361140849419774995L, 4739152624066376071L}).toString());
                            obfuscatedString = sb.toString();
                        }
                    } catch (Throwable th) {
                        timeoutFuture.setException(new TimeoutFutureException(obfuscatedString));
                        throw th;
                    }
                }
                String valueOf2 = String.valueOf(obfuscatedString);
                String valueOf3 = String.valueOf(listenableFuture);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 2 + valueOf3.length());
                sb2.append(valueOf2);
                sb2.append(new ObfuscatedString(new long[]{6089798331685545092L, -6635401823931979774L}).toString());
                sb2.append(valueOf3);
                timeoutFuture.setException(new TimeoutFutureException(sb2.toString()));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class TimeoutFutureException extends TimeoutException {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private TimeoutFutureException(String str) {
            super(str);
        }
    }

    private TimeoutFuture(ListenableFuture<V> listenableFuture) {
        this.delegateRef = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
    }

    public static <V> ListenableFuture<V> create(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(listenableFuture);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.timer = scheduledExecutorService.schedule(fire, j, timeUnit);
        listenableFuture.addListener(fire, MoreExecutors.directExecutor());
        return timeoutFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        maybePropagateCancellationTo(this.delegateRef);
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.delegateRef = null;
        this.timer = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        ListenableFuture<V> listenableFuture = this.delegateRef;
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (listenableFuture != null) {
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 14);
            sb.append(new ObfuscatedString(new long[]{-3253486924383909393L, 8345158307233134454L, -8629630716229460780L}).toString());
            sb.append(valueOf);
            String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2737928449960056842L, 3439713198710981598L}), sb);
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    String valueOf2 = String.valueOf(m3332x9d12c1f4);
                    StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + 43, valueOf2);
                    m2938x1aebc6d9.append(new ObfuscatedString(new long[]{189720821893815189L, -4941381497215748100L, -961500305607228123L, -2832513556310160433L}).toString());
                    m2938x1aebc6d9.append(delay);
                    return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2755799974314790873L, -4931383135558202485L}), m2938x1aebc6d9);
                }
                return m3332x9d12c1f4;
            }
            return m3332x9d12c1f4;
        }
        return null;
    }
}
