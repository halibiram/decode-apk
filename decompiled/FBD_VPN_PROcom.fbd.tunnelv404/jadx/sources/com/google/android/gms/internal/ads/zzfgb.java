package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfgb implements OnAdMetadataChangedListener {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzdd zza;
    final /* synthetic */ zzfgd zzb;

    public zzfgb(zzfgd zzfgdVar, com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        this.zza = zzddVar;
        this.zzb = zzfgdVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzdso zzdsoVar;
        zzdsoVar = this.zzb.zzi;
        if (zzdsoVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-9175970346364773740L, -6599382585487817969L, 5350844094142331285L, 5204294651238930607L, -2231026657515849994L, 6725559381524777804L}).toString(), e);
            }
        }
    }
}
