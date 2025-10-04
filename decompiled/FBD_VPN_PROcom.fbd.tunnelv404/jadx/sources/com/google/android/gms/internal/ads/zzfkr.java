package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzfkr implements ListenableFuture {
    private final Object zza;
    private final String zzb;
    private final ListenableFuture zzc;

    @VisibleForTesting(otherwise = 3)
    public zzfkr(Object obj, String str, ListenableFuture listenableFuture) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = listenableFuture;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzc.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzc.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zzc.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzc.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzc.isDone();
    }

    public final String toString() {
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6763344165807391577L, 8348604569186852108L}), sb, identityHashCode);
    }

    public final Object zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.zzc.get(j, timeUnit);
    }
}
