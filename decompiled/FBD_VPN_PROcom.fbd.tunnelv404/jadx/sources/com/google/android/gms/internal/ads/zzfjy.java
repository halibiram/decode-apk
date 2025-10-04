package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
final class zzfjy implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.zza.getAndIncrement();
        return new Thread(runnable, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-9084916136679729571L, -7174065957984838665L, 2645235063820716007L}), new StringBuilder(), andIncrement));
    }
}
