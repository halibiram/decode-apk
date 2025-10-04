package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzccg implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    public zzccg(zzcch zzcchVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        int andIncrement = this.zza.getAndIncrement();
        return new Thread(runnable, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2933935925739616801L, -2870581755183256130L, 4692164627483488558L, -2219593766065102183L, 3233928333379427428L}), new StringBuilder(), andIncrement));
    }
}
