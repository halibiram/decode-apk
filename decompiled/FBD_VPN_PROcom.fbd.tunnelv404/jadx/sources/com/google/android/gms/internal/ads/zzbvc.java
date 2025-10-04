package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbvc implements SignalCallbacks {
    final /* synthetic */ zzbuv zza;

    public zzbvc(zzbve zzbveVar, zzbuv zzbuvVar) {
        this.zza = zzbuvVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzg(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5494669601232811264L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.zza.zze(str);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{927382389282934274L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.zza.zzf(str);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1309469973951657486L}).toString(), e);
        }
    }
}
