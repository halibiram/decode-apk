package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.Closeable;

/* loaded from: classes2.dex */
public final class zzark extends zzhgo implements Closeable {
    private static final zzhgv zza = zzhgv.zzb(zzark.class);

    public zzark(zzhgp zzhgpVar, zzarj zzarjVar) {
        zzf(zzhgpVar, zzhgpVar.zzc(), zzarjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgo, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzhgo
    public final String toString() {
        String obj = this.zzd.toString();
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(7, obj));
        sb.append(new ObfuscatedString(new long[]{-4489146936581324929L, 983611060607699449L}).toString());
        sb.append(obj);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5447371747902717861L, -778813370678285478L}), sb);
    }
}
