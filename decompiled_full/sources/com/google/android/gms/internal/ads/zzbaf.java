package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbaf extends AppOpenAd {

    @Nullable
    FullScreenContentCallback zza;
    private final zzbaj zzb;

    @NonNull
    private final String zzc;
    private final zzbag zzd = new zzbag();

    @Nullable
    private OnPaidEventListener zze;

    public zzbaf(zzbaj zzbajVar, String str) {
        this.zzb = zzbajVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final String getAdUnitId() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.zzb.zzf();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-424414185187164066L, 6465356314609732983L, 7582672662209708616L, -2590731578440534043L, 3497443719359590936L, -1207616525226520987L}).toString(), e);
            zzdnVar = null;
        }
        return ResponseInfo.zzb(zzdnVar);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        this.zza = fullScreenContentCallback;
        this.zzd.zzg(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.zzb.zzg(z);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5036033568541847222L, 5954203007600492782L, -7946124302669619280L, 5120185861011804971L, -6820565691781100356L, 7287839819332375202L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.zze = onPaidEventListener;
        try {
            this.zzb.zzh(new com.google.android.gms.ads.internal.client.zzfe(onPaidEventListener));
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-907028408516384154L, 2626441263298800007L, 6977090634873620283L, 8551490443917959682L, 2539207029772525007L, -3213497241887662002L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(@NonNull Activity activity) {
        try {
            this.zzb.zzi(ObjectWrapper.wrap(activity), this.zzd);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{3030981699108904472L, 5126731401592974116L, 6943148325689920956L, 6224043284105572419L, -4360937504856137300L, -2435724326235871545L}).toString(), e);
        }
    }
}
