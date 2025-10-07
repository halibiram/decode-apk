package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbva implements MediationAdLoadCallback {
    final /* synthetic */ zzbum zza;
    final /* synthetic */ zzbtb zzb;

    public zzbva(zzbve zzbveVar, zzbum zzbumVar, zzbtb zzbtbVar) {
        this.zza = zzbumVar;
        this.zzb = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1934274782824284854L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        if (unifiedNativeAdMapper == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{745418300596413792L, -8501629217007931239L, 5608548910141171500L, -1754356629411289076L, 542927360741774022L, 8610000074981616065L, 3569043582993456108L, -8529616419553525866L, -6782813723239187204L, -2437747286103262718L, 5789365196611911477L, 7820723769880610639L, -7475517994962177044L, 1824813244186684608L, 1599141228187223766L, 3436927090453196586L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{2141929276236933451L, 2393319059873629780L, -2233235416031657261L, 2427540451397563068L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-3353473936930542757L}).toString(), e);
                return null;
            }
        }
        try {
            this.zza.zzg(new zzbua(unifiedNativeAdMapper));
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5051495969709699017L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{3662328100324333724L, -7496356571316945427L, -2647159275367889069L}).toString()));
    }
}
