package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeva implements zzexp {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;

    public zzeva(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = z3;
        this.zze = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (!this.zza.isEmpty()) {
            bundle.putString(new ObfuscatedString(new long[]{-7849171636584978880L, -1683960230505359013L, 8996666400292450206L}).toString(), this.zza);
        }
        bundle.putInt(new ObfuscatedString(new long[]{1865571454656584598L, 5855478670507023203L, 3628996959291613178L}).toString(), this.zzb ? 1 : 0);
        bundle.putInt(new ObfuscatedString(new long[]{-7844909321230389382L, -4965090097733135102L, -2609979506216756589L}).toString(), this.zzc ? 1 : 0);
        if (this.zzb || this.zzc) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjd)).booleanValue()) {
                bundle.putInt(new ObfuscatedString(new long[]{6667426599191087118L, 2820593126086236791L}).toString(), !this.zzd ? 1 : 0);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjh)).booleanValue()) {
                bundle.putBoolean(new ObfuscatedString(new long[]{-1734898145699725556L, -2108388193411162232L, 2231587013830647964L, 635503379589579962L}).toString(), this.zze);
            }
        }
    }
}
