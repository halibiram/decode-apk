package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgpz extends zzgra {
    private final int zza;
    private final int zzb;
    private final zzgpx zzc;

    public /* synthetic */ zzgpz(int i, int i2, zzgpx zzgpxVar, zzgpy zzgpyVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgpxVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpz)) {
            return false;
        }
        zzgpz zzgpzVar = (zzgpz) obj;
        if (zzgpzVar.zza != this.zza || zzgpzVar.zzd() != zzd() || zzgpzVar.zzc != this.zzc) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgpz.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3428138402922703336L, -5169565831372762307L, 1050438467893201253L, 6826531669734806787L, -4777898161305245183L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-6287100567675300714L, -3103296131091603200L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{3898415814252446878L, -2565121155378528225L, -4840256250792081016L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7462266053294208942L, 5258058053087199102L, 3364527060389456094L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zzc != zzgpx.zzd;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final int zzd() {
        zzgpx zzgpxVar = this.zzc;
        if (zzgpxVar == zzgpx.zzd) {
            return this.zzb;
        }
        if (zzgpxVar == zzgpx.zza || zzgpxVar == zzgpx.zzb || zzgpxVar == zzgpx.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-1386767235275087169L, 2059048698459570756L, 7348227274092461368L}).toString());
    }

    public final zzgpx zze() {
        return this.zzc;
    }
}
