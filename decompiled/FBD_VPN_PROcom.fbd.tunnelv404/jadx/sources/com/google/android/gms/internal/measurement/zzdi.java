package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdi implements ThreadFactory {
    private final ThreadFactory zza = Executors.defaultThreadFactory();

    public zzdi(zzee zzeeVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.zza.newThread(runnable);
        newThread.setName(new ObfuscatedString(new long[]{9209401448631322215L, 6252209620740420229L, -7503076274983641532L}).toString());
        return newThread;
    }
}
