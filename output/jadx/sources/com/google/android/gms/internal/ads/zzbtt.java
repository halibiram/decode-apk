package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbtt implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ zzbtv zzb;

    public zzbtt(zzbtv zzbtvVar, zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
        this.zzb = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{-92663976134963289L, 1848030863933892189L, -7451452076760840299L, 2679027724759270801L, 1655435598673484971L, 2497563770905140849L, 4976029664748408447L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{3383101270768081525L, 2373688057505835142L, -6473599939757693053L, 8031284286599238759L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{1371447359023292758L, 2244149083771961400L, -787172968079633724L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{232442852494581185L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zzh = (MediationRewardedAd) obj;
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4719685271569646035L}).toString(), e);
        }
        return new zzcbd(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{-6700036971079971088L, -5985002986264602482L, 2248856365979286938L, 5907940000004291998L, -2207480037612254899L}).toString() + str);
            this.zza.zzi(0, str);
            this.zza.zzg(0);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1241865299142691818L}).toString(), e);
        }
    }
}
