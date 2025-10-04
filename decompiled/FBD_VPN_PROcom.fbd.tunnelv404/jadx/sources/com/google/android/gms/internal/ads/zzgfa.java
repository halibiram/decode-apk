package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzgfa extends zzgdg {
    private final ExecutorService zza;

    public zzgfa(ExecutorService executorService) {
        executorService.getClass();
        this.zza = executorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.zza.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.zza.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.zza.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.zza.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        return this.zza.shutdownNow();
    }

    public final String toString() {
        ExecutorService executorService = this.zza;
        String obj = super.toString();
        String valueOf = String.valueOf(executorService);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obj);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{3081614787372822062L, 1899206861935975895L}).toString());
        m3341xc20437a5.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8754103467751043676L, -7257633205039369790L}), m3341xc20437a5);
    }
}
