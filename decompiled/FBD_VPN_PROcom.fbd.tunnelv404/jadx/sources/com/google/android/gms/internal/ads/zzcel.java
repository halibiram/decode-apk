package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
final class zzcel implements ThreadFactory {
    final /* synthetic */ String zza;
    private final AtomicInteger zzb = new AtomicInteger(1);

    public zzcel(String str) {
        this.zza = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.zzb.getAndIncrement();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3278991354165766230L, -7639507550410638103L, 8413792226480259369L}).toString());
        sb.append(this.zza);
        return new Thread(runnable, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3841931815041228172L, -3090107754853419345L}), sb, andIncrement));
    }
}
