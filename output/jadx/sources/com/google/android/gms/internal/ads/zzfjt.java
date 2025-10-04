package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfjt {
    private final long zza;
    private long zzc;
    private final zzfjs zzb = new zzfjs();
    private int zzd = 0;
    private int zze = 0;
    private int zzf = 0;

    public zzfjt() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        this.zza = currentTimeMillis;
        this.zzc = currentTimeMillis;
    }

    public final int zza() {
        return this.zzd;
    }

    public final long zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final zzfjs zzd() {
        zzfjs zzfjsVar = this.zzb;
        zzfjs clone = zzfjsVar.clone();
        zzfjsVar.zza = false;
        zzfjsVar.zzb = 0;
        return clone;
    }

    public final String zze() {
        return new ObfuscatedString(new long[]{-8506135431820623806L, -7856854708054854099L, 6439155234132929009L}).toString() + this.zza + new ObfuscatedString(new long[]{1010483844535066306L, -1859140863155137702L, -7389850395909878418L}).toString() + this.zzc + new ObfuscatedString(new long[]{-2280929341666367973L, -1579590342611167149L, -2151618145091694638L}).toString() + this.zzd + new ObfuscatedString(new long[]{504696797664374971L, -8274195492990819460L, 7207733881407070010L, 3130001022928877905L, 2691272208613129113L}).toString() + this.zze + new ObfuscatedString(new long[]{-7421897438614800162L, 5632723715829891254L}).toString() + this.zzf;
    }

    public final void zzf() {
        this.zzc = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        this.zzd++;
    }

    public final void zzg() {
        this.zzf++;
        this.zzb.zzb++;
    }

    public final void zzh() {
        this.zze++;
        this.zzb.zza = true;
    }
}
