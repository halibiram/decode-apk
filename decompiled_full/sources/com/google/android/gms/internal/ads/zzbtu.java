package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbtu implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ zzbtv zzb;

    public zzbtu(zzbtv zzbtvVar, zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
        this.zzb = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{-478363935121247106L, 7997155019733608977L, -6337091411891058233L, 2877398090034594321L, 1336866817857055927L, 206130661035542190L, -6478902321117603977L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-6940259294550059527L, 7767894649434109236L, 1992799742511231332L, 9113191317765997979L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-340797664697556760L, 1672574171378406859L, -9064270238434187293L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4439222552425967278L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zzj = (MediationAppOpenAd) obj;
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6019600665818256898L}).toString(), e);
        }
        return new zzbtm(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{7383990062717087576L, -1259444271935309502L, -2012720209523277649L, -1226654546237423662L, -3171611854246081646L}).toString() + str);
            this.zza.zzi(0, str);
            this.zza.zzg(0);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1837999039961359250L}).toString(), e);
        }
    }
}
