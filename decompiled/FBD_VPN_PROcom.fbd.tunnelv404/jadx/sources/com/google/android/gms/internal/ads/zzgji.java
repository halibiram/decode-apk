package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgji extends zzghi {
    private final int zza;
    private final int zzb = 12;
    private final int zzc = 16;
    private final zzgjg zzd;

    public /* synthetic */ zzgji(int i, int i2, int i3, zzgjg zzgjgVar, zzgjh zzgjhVar) {
        this.zza = i;
        this.zzd = zzgjgVar;
    }

    public static zzgjf zzc() {
        return new zzgjf(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgji)) {
            return false;
        }
        zzgji zzgjiVar = (zzgji) obj;
        if (zzgjiVar.zza != this.zza || zzgjiVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgji.class, Integer.valueOf(this.zza), 12, 16, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-5227661798385424068L, 6107129538916224305L, 4388019638808082545L, 2145262428242780922L, 7310134535286440594L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-6148527283289686568L, 1926284748935813626L}).toString());
        sb.append(12);
        sb.append(new ObfuscatedString(new long[]{8330412265310629451L, 1545003126606768544L, 6588304556957866780L}).toString());
        sb.append(16);
        sb.append(new ObfuscatedString(new long[]{-579245178147108115L, -4544922570218033813L, -2809386312968177812L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-541899953119012794L, 790087443967668210L, -2078354909223506188L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zzd != zzgjg.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzgjg zzd() {
        return this.zzd;
    }
}
