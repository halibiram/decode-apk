package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.concurrent.Executor;

@Deprecated
/* loaded from: classes2.dex */
public final class zzdwf {
    private final zzdwk zza;
    private final Executor zzb;
    private final Map zzc;

    public zzdwf(zzdwk zzdwkVar, Executor executor) {
        this.zza = zzdwkVar;
        this.zzc = zzdwkVar.zza();
        this.zzb = executor;
    }

    public final zzdwe zza() {
        zzdwe zzdweVar = new zzdwe(this);
        zzdwe.zza(zzdweVar);
        return zzdweVar;
    }

    public final void zze() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlb)).booleanValue()) {
            return;
        }
        zzdwe zza = zza();
        zza.zzb(new ObfuscatedString(new long[]{2480504428913263106L, -1627643066947978714L}).toString(), new ObfuscatedString(new long[]{5553200744958582563L, -2504769231935668978L}).toString());
        zza.zzg();
    }
}
