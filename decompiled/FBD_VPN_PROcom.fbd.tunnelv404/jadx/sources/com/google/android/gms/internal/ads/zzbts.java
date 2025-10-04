package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbts implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ zzbtv zzb;

    public zzbts(zzbtv zzbtvVar, zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
        this.zzb = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{-6313792883477708343L, 9221880874041269887L, 7668063171003140501L, 6918068163176162124L, -4778984818264498581L, 7836178083654034573L, -8999838813341784572L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-640140794539908933L, -9124760117838028675L, 6807832959957113212L, 8200895511701852624L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-6376824985466787087L, -5824347684041742097L, 537076720573765762L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3290383790653018585L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zzg = (UnifiedNativeAdMapper) obj;
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5615798750079574611L}).toString(), e);
        }
        return new zzbtm(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{-5598616638561693692L, 6727205222554631681L, 8589322563604597773L}).toString()));
    }
}
