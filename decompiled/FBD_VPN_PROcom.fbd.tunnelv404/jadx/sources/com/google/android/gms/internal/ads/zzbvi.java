package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbvi implements com.google.android.gms.ads.internal.overlay.zzp {
    final /* synthetic */ zzbvk zza;

    public zzbvi(zzbvk zzbvkVar) {
        this.zza = zzbvkVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbA() {
        MediationInterstitialListener mediationInterstitialListener;
        zzcec.zze(new ObfuscatedString(new long[]{5196880012408970262L, 3068704450861113367L, -4628711890703486949L, 565990159024454992L, -5581034085293406863L, -8626178429151370781L}).toString());
        zzbvk zzbvkVar = this.zza;
        mediationInterstitialListener = zzbvkVar.zzb;
        mediationInterstitialListener.onAdOpened(zzbvkVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbC() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbD(int i) {
        MediationInterstitialListener mediationInterstitialListener;
        zzcec.zze(new ObfuscatedString(new long[]{4861729862018546862L, 8823650821132782316L, -6903762503319295237L, -9049914479099289405L, -1502950583821040359L, 1408814757143690872L, 2853109283065018259L}).toString());
        zzbvk zzbvkVar = this.zza;
        mediationInterstitialListener = zzbvkVar.zzb;
        mediationInterstitialListener.onAdClosed(zzbvkVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbP() {
        zzcec.zze(new ObfuscatedString(new long[]{3596321816432965917L, 4053621543935354759L, 6655868254847329386L, 5607513371269223814L, 831604064467031149L, 2871077771576929044L, 755470522451887861L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbt() {
        zzcec.zze(new ObfuscatedString(new long[]{-1022978594524145244L, 5408917098292400052L, -2981315997926338200L, -8769844734443598658L, 6938862830342810583L, 594489917202647318L, -1417835782182523157L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
        zzcec.zze(new ObfuscatedString(new long[]{-258432183851475187L, -6491683062744414270L, -7157272606971508749L, -3877956908364628849L, 3774589425417089899L, 314024721625188647L, 6964615433433144684L}).toString());
    }
}
