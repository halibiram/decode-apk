package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgjv extends zzghi {
    private final int zza;
    private final zzgjt zzb;

    public /* synthetic */ zzgjv(int i, zzgjt zzgjtVar, zzgju zzgjuVar) {
        this.zza = i;
        this.zzb = zzgjtVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjv)) {
            return false;
        }
        zzgjv zzgjvVar = (zzgjv) obj;
        if (zzgjvVar.zza != this.zza || zzgjvVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgjv.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7116124502184867933L, -4722263062573890347L, -1269682196769507946L, -795271878965322525L, 9222371511393033834L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-6355870410542863394L, 2445871685913171960L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-9091495326696411243L, -5680637639344264898L, -657624172102434881L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zzb != zzgjt.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzgjt zzc() {
        return this.zzb;
    }
}
