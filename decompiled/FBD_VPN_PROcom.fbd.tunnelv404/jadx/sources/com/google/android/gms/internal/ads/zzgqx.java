package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgqx extends zzgra {
    private final int zza;
    private final int zzb;
    private final zzgqv zzc;
    private final zzgqu zzd;

    public /* synthetic */ zzgqx(int i, int i2, zzgqv zzgqvVar, zzgqu zzgquVar, zzgqw zzgqwVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgqvVar;
        this.zzd = zzgquVar;
    }

    public static zzgqt zze() {
        return new zzgqt(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgqx)) {
            return false;
        }
        zzgqx zzgqxVar = (zzgqx) obj;
        if (zzgqxVar.zza != this.zza || zzgqxVar.zzd() != zzd() || zzgqxVar.zzc != this.zzc || zzgqxVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgqx.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final String toString() {
        zzgqu zzgquVar = this.zzd;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(zzgquVar);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-484976124870595653L, 6164116217340874139L, -1170233255855984873L, 3140954994411448208L, 8485956301666315378L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{4702394314158861756L, 2777950612030880798L, 2683578269497041257L}).toString());
        sb.append(valueOf2);
        sb.append(new ObfuscatedString(new long[]{-2584019841451364131L, 9152935437683643724L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{7033221762771915854L, -5698099114171798458L, 2867701673385012583L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7861002002718223542L, -2617336126987737445L, -4921999443670347123L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zzc != zzgqv.zzd;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final int zzd() {
        zzgqv zzgqvVar = this.zzc;
        if (zzgqvVar == zzgqv.zzd) {
            return this.zzb;
        }
        if (zzgqvVar == zzgqv.zza || zzgqvVar == zzgqv.zzb || zzgqvVar == zzgqv.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8770696374004631938L, 5410076341242138837L, -4495011004874993432L}).toString());
    }

    public final zzgqu zzf() {
        return this.zzd;
    }

    public final zzgqv zzg() {
        return this.zzc;
    }
}
