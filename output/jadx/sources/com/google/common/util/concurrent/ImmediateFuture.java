package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public class ImmediateFuture<V> implements ListenableFuture<V> {
    static final ListenableFuture<?> NULL = new ImmediateFuture(null);
    private static final Logger log = Logger.getLogger(ImmediateFuture.class.getName());

    @ParametricNullness
    private final V value;

    /* loaded from: classes2.dex */
    public static final class ImmediateCancelledFuture<V> extends AbstractFuture.TrustedFuture<V> {
        static final ImmediateCancelledFuture<Object> INSTANCE;

        static {
            ImmediateCancelledFuture<Object> immediateCancelledFuture;
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                immediateCancelledFuture = null;
            } else {
                immediateCancelledFuture = new ImmediateCancelledFuture<>();
            }
            INSTANCE = immediateCancelledFuture;
        }

        public ImmediateCancelledFuture() {
            cancel(false);
        }
    }

    /* loaded from: classes2.dex */
    public static final class ImmediateFailedFuture<V> extends AbstractFuture.TrustedFuture<V> {
        public ImmediateFailedFuture(Throwable th) {
            setException(th);
        }
    }

    public ImmediateFuture(@ParametricNullness V v) {
        this.value = v;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, new ObfuscatedString(new long[]{-2363518932599737572L, 8321416916800073154L, -1003788766115772522L, 7591250143561992674L}).toString());
        Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{-2789883857334848653L, 6702188159633264481L, -3505961400706240495L, -8603948170391450036L}).toString());
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = log;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 57);
            sb.append(new ObfuscatedString(new long[]{-5881442267275582983L, -6152269689535214421L, 7053211450485882711L, -6479523825929280579L, -2019127181593256781L, 5680105635347430534L, 504245132224927562L}).toString());
            sb.append(valueOf);
            logger.log(level, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7133271234086374358L, 1331002286787668436L, 389021549114193423L}), sb, valueOf2), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get() {
        return this.value;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.value);
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + AbstractC1320xaf50c7e8.m4356x1378447b(27, obj), obj);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-675673618432972166L, -7470007583446743350L, -1458103096092587518L, -3920073391811289625L, 6181452002429625554L}).toString());
        m2938x1aebc6d9.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3424607472168083772L, 209148761830332851L}), m2938x1aebc6d9);
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        return get();
    }
}
