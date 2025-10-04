package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzevh implements zzexp {
    public final zzfgl zza;

    public zzevh(zzfgl zzfglVar) {
        this.zza = zzfglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.zza != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzln)).booleanValue()) {
                bundle.putBoolean(new ObfuscatedString(new long[]{-535201893758528030L, 6821326315405880235L, -1951106254359404831L, 1676597028547713808L}).toString(), this.zza.zzd());
                bundle.putBoolean(new ObfuscatedString(new long[]{-7250202285969559185L, -192014981391659869L, -3926251474652507286L}).toString(), this.zza.zzc());
            }
        }
    }
}
