package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgdb;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzgfc extends zzgdb.zzi implements Runnable {
    private final Runnable zza;

    public zzgfc(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final String zza() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-5458665972097959898L, -8188056727706663847L}).toString());
        sb.append(obj);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3296524489492003705L, 8972724579898138694L}), sb);
    }
}
