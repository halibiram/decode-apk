package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbvb implements MediationAdLoadCallback {
    final /* synthetic */ zzbud zza;
    final /* synthetic */ zzbtb zzb;
    final /* synthetic */ zzbve zzc;

    public zzbvb(zzbve zzbveVar, zzbud zzbudVar, zzbtb zzbtbVar) {
        this.zza = zzbudVar;
        this.zzb = zzbtbVar;
        this.zzc = zzbveVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{517559897771553196L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationAppOpenAd mediationAppOpenAd = (MediationAppOpenAd) obj;
        if (mediationAppOpenAd == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{9040529884031690372L, 5118193944151428140L, 8779102184109533754L, 6208420371900573591L, -6919665412265908110L, -1809446718540993052L, -8351114791770617816L, -1437453720376883965L, -7357347902500759148L, 5670594566586991315L, 6777574201553428614L, -8899197895617508972L, 8132232346523434410L, 3740880368004339716L, 8226424800988932989L, 2197486739956651152L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{-1892443229053351595L, 4262620355463295108L, 940626626975864929L, -7050326878865174101L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-6129117635533840236L}).toString(), e);
                return null;
            }
        }
        try {
            this.zzc.zzd = mediationAppOpenAd;
            this.zza.zzg();
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{1599356106040801167L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{7155507745383690065L, 6296996942430870519L, -5445880275813567020L}).toString()));
    }
}
