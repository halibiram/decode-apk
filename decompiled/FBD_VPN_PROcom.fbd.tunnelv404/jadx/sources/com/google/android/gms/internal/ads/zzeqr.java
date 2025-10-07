package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeqr {
    private final zzdnl zza;
    private final zzeqe zzb;
    private final zzdba zzc;

    public zzeqr(zzdnl zzdnlVar, zzflw zzflwVar) {
        this.zza = zzdnlVar;
        final zzeqe zzeqeVar = new zzeqe(zzflwVar);
        this.zzb = zzeqeVar;
        final zzbpy zzg = zzdnlVar.zzg();
        this.zzc = new zzdba() { // from class: com.google.android.gms.internal.ads.zzeqq
            @Override // com.google.android.gms.internal.ads.zzdba
            public final void zzbK(com.google.android.gms.ads.internal.client.zze zzeVar) {
                zzeqe.this.zzbK(zzeVar);
                zzbpy zzbpyVar = zzg;
                if (zzbpyVar != null) {
                    try {
                        zzbpyVar.zzf(zzeVar);
                    } catch (RemoteException e) {
                        zzcec.zzl(new ObfuscatedString(new long[]{6062273022515706042L, -8216674208614649071L, -3170788213014928432L, 8101444110816796079L, 6663771533253504148L, -619751633393731517L}).toString(), e);
                    }
                }
                if (zzbpyVar != null) {
                    try {
                        zzbpyVar.zze(zzeVar.zza);
                    } catch (RemoteException e2) {
                        zzcec.zzl(new ObfuscatedString(new long[]{3367313516847874642L, 3994287176068430066L, -3164267955702502204L, 1289914945264519728L, 5613876678140852483L, 3617058013467610764L}).toString(), e2);
                    }
                }
            }
        };
    }

    public final zzdba zza() {
        return this.zzc;
    }

    public final zzdcl zzb() {
        return this.zzb;
    }

    public final zzdlf zzc() {
        return new zzdlf(this.zza, this.zzb.zzg());
    }

    public final zzeqe zzd() {
        return this.zzb;
    }

    public final void zze(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zzb.zzj(zzbhVar);
    }
}
