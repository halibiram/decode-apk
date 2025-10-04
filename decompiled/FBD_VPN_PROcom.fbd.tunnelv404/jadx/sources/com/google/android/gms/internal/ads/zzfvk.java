package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfvk extends zzfun {
    final /* synthetic */ zzfvl zza;
    private final zzfvq zzb;

    public zzfvk(zzfvl zzfvlVar, zzfvq zzfvqVar) {
        this.zza = zzfvlVar;
        this.zzb = zzfvqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuo
    public final void zzb(Bundle bundle) {
        String obfuscatedString = new ObfuscatedString(new long[]{5518967052583986979L, -7030496434616840410L, 5856968024130088483L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-6671253920584797651L, 8213887085619650262L, 8092605036626579373L}).toString();
        int i = bundle.getInt(obfuscatedString, 8150);
        String string = bundle.getString(obfuscatedString2);
        zzfvo zzc = zzfvp.zzc();
        zzc.zzb(i);
        if (string != null) {
            zzc.zza(string);
        }
        this.zzb.zza(zzc.zzc());
        if (i == 8157) {
            this.zza.zzc();
        }
    }
}
