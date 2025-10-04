package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcia extends zzchw {
    public zzcia(zzcgl zzcglVar) {
        super(zzcglVar);
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final boolean zzt(String str) {
        String zze = zzcdv.zze(str);
        zzcgl zzcglVar = (zzcgl) this.zzc.get();
        if (zzcglVar != null && zze != null) {
            zzcglVar.zzt(zze, this);
        }
        zzcec.zzj(new ObfuscatedString(new long[]{1579786540214661707L, -4224936069821681060L, 5684847263876943893L, -3784201001183526324L, -2227745985778529417L, -4617203784827430791L}).toString());
        zzg(str, zze, new ObfuscatedString(new long[]{3395069280774093392L, 5867652543250232403L}).toString(), new ObfuscatedString(new long[]{4562103826646077572L, -1733128435021790127L, 7593385224888090493L, -5016231899781799372L}).toString());
        return false;
    }
}
