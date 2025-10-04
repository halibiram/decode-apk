package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeqi implements com.google.android.gms.ads.internal.client.zza, zzdiu {
    private com.google.android.gms.ads.internal.client.zzbe zza;

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.zza;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-469546419777459606L, 5063119075314404582L, 3885975728683158371L, -8804746715751013080L, 2679745412889709428L}).toString(), e);
            }
        }
    }

    public final synchronized void zza(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.zza = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final synchronized void zzbo() {
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final synchronized void zzs() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.zza;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-5834334590747341468L, 1095776108171657369L, 7912430576943803943L, 7971420586376801775L, 5639439901013506638L, 2897008527595563812L}).toString(), e);
            }
        }
    }
}
