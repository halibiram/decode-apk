package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzesl implements zzexp {
    private final com.google.android.gms.ads.internal.client.zzw zza;
    private final zzcei zzb;
    private final boolean zzc;

    public zzesl(com.google.android.gms.ads.internal.client.zzw zzwVar, zzcei zzceiVar, boolean z) {
        this.zza = zzwVar;
        this.zzb = zzceiVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.zzb.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfh)).intValue()) {
            bundle.putString(new ObfuscatedString(new long[]{5769917253299386469L, -5245962861604039405L, 4705142424193557133L}).toString(), new ObfuscatedString(new long[]{-8547898992336956627L, 1417652503867175106L}).toString());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfi)).booleanValue()) {
            bundle.putBoolean(new ObfuscatedString(new long[]{-4812613742500279606L, 6801509220149004774L, 8820945232495521371L}).toString(), this.zzc);
        }
        com.google.android.gms.ads.internal.client.zzw zzwVar = this.zza;
        if (zzwVar != null) {
            int i = zzwVar.zza;
            if (i == 1) {
                bundle.putString(new ObfuscatedString(new long[]{3007847581994770981L, -7203363268163239145L}).toString(), new ObfuscatedString(new long[]{620733881396616087L, 4897750188441071336L}).toString());
            } else if (i == 2) {
                bundle.putString(new ObfuscatedString(new long[]{-4614230531579133185L, 1925526422615459061L}).toString(), new ObfuscatedString(new long[]{-7246109592283357428L, -3845842039912793379L}).toString());
            }
        }
    }
}
