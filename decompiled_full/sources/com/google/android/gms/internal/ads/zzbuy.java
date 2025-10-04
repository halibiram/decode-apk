package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbuy implements MediationAdLoadCallback {
    final /* synthetic */ zzbug zza;
    final /* synthetic */ zzbtb zzb;

    public zzbuy(zzbve zzbveVar, zzbug zzbugVar, zzbtb zzbtbVar) {
        this.zza = zzbugVar;
        this.zzb = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2195058566493957519L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationInterscrollerAd mediationInterscrollerAd = (MediationInterscrollerAd) obj;
        if (mediationInterscrollerAd == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{8933996933603049710L, -3418374691849889815L, -4950020626534669818L, -2017407406843194874L, -5132470617119733114L, 7538169815864491722L, -8293211187880170078L, -5379589111922793408L, -7076469589469350899L, 2485824304671827363L, 5969159070745544750L, -8723986629523572658L, 8139643388270998421L, 4929862835377503431L, 9076696687930454985L, -2924303004795369603L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{-6667213866178624664L, -2903834993652105059L, 6039296874646244443L, -9137301934492744220L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{8069406589134516139L}).toString(), e);
                return null;
            }
        }
        try {
            this.zza.zzh(new zzbtw(mediationInterscrollerAd));
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{3665473732518268897L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{1027564533864583534L, 8561817256299134146L, -819039567984456369L}).toString()));
    }
}
