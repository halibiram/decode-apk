package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcq implements Executor {
    private final ThreadPoolExecutor zzb;
    private final AtomicInteger zza = new AtomicInteger(1);
    private WeakReference zzc = new WeakReference(null);

    public zzcq(String str) {
        final String obfuscatedString = new ObfuscatedString(new long[]{-7677568927431153428L, 7012069005278719393L, -1371627377088359047L, -581650610427903195L}).toString();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(obfuscatedString) { // from class: com.google.android.gms.internal.consent_sdk.zzcp
            public final /* synthetic */ String zzb = new ObfuscatedString(new long[]{980521098587472696L, -2583815348255366971L, -4087878070779903364L, -1150850477166228192L}).toString();

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return zzcq.this.zza(this.zzb, runnable);
            }
        });
        this.zzb = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.zzc.get()) {
            runnable.run();
        } else {
            this.zzb.execute(runnable);
        }
    }

    public final /* synthetic */ Thread zza(String str, Runnable runnable) {
        int andIncrement = this.zza.getAndIncrement();
        Thread thread = new Thread(runnable, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1651492987223391251L, -3612852968506229727L, -3419926605933331547L, 1600229528808384734L}), new StringBuilder(), andIncrement));
        this.zzc = new WeakReference(thread);
        return thread;
    }
}
