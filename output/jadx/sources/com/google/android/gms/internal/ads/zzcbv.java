package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcbv {
    private final Clock zza;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzcch zzc;

    public zzcbv(Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzcch zzcchVar) {
        this.zza = clock;
        this.zzb = zzgVar;
        this.zzc = zzcchVar;
    }

    public final void zza(int i, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzap)).booleanValue()) {
            return;
        }
        if (j - this.zzb.zzf() < 0) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2008299767857434206L, -1373415715405717699L, 4999468787440890492L, -7556711550925189016L, -1260523742656326177L, 5382764302583652577L, -4216321782470201112L}).toString());
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaq)).booleanValue()) {
            this.zzb.zzL(-1);
            this.zzb.zzM(j);
        } else {
            this.zzb.zzL(i);
            this.zzb.zzM(j);
        }
    }
}
