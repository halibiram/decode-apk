package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbuz implements MediationAdLoadCallback {
    final /* synthetic */ zzbuj zza;
    final /* synthetic */ zzbtb zzb;
    final /* synthetic */ zzbve zzc;

    public zzbuz(zzbve zzbveVar, zzbuj zzbujVar, zzbtb zzbtbVar) {
        this.zza = zzbujVar;
        this.zzb = zzbtbVar;
        this.zzc = zzbveVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-9131711116157877638L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationInterstitialAd mediationInterstitialAd = (MediationInterstitialAd) obj;
        if (mediationInterstitialAd == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-2374427151867642215L, 6955175407879236398L, 4535350887607862414L, -2148117649153348723L, -3308795659526903203L, 9063063770371035822L, -7515281675457490065L, 5587649191366363760L, -1760124924055399372L, 7223667394173923625L, 3610784418240870249L, -2466998770001628079L, 7187066346265595647L, 6280717314840490464L, 6653439182870587903L, -3271045804869410371L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{989292509134944606L, 6321704621775733485L, 6713590865240984038L, 3739420151609005245L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-73192684522265765L}).toString(), e);
                return null;
            }
        }
        try {
            this.zzc.zzb = mediationInterstitialAd;
            this.zza.zzg();
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-3972995897387422856L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{-4876196382376421482L, -7834879849627944351L, -4247876291467279772L}).toString()));
    }
}
