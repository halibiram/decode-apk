package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdxv implements zzdxf {
    private final long zza;
    private final zzdxk zzb;
    private final zzfgd zzc;

    public zzdxv(long j, Context context, zzdxk zzdxkVar, zzclg zzclgVar, String str) {
        this.zza = j;
        this.zzb = zzdxkVar;
        zzfgf zzv = zzclgVar.zzv();
        zzv.zzb(context);
        zzv.zza(str);
        this.zzc = zzv.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdxf
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzdxf
    public final void zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        try {
            this.zzc.zzf(zzlVar, new zzdxt(this));
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-4199417622585258676L, -868862667127188550L, -2252700190920432273L, -3221950984001293071L, 1566356788489823313L, 5266854146331370524L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxf
    public final void zzc() {
        try {
            this.zzc.zzk(new zzdxu(this));
            this.zzc.zzm(ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2640346152666274293L, 7349339318262053700L, -1075919930601023101L, -3211222572014247833L, 4553701980481266577L, -8781182983393193756L}).toString(), e);
        }
    }
}
