package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzblt extends zzbkw {
    private final OnAdManagerAdViewLoadedListener zza;

    public zzblt(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zza = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbkx
    public final void zze(com.google.android.gms.ads.internal.client.zzbu zzbuVar, IObjectWrapper iObjectWrapper) {
        AdListener adListener;
        if (zzbuVar != null && iObjectWrapper != null) {
            AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzbuVar.zzi() instanceof com.google.android.gms.ads.internal.client.zzg) {
                    com.google.android.gms.ads.internal.client.zzg zzgVar = (com.google.android.gms.ads.internal.client.zzg) zzbuVar.zzi();
                    if (zzgVar != null) {
                        adListener = zzgVar.zzb();
                    } else {
                        adListener = null;
                    }
                    adManagerAdView.setAdListener(adListener);
                }
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-1942132454496659273L}).toString(), e);
            }
            try {
                if (zzbuVar.zzj() instanceof zzaze) {
                    zzaze zzazeVar = (zzaze) zzbuVar.zzj();
                    if (zzazeVar != null) {
                        appEventListener = zzazeVar.zzb();
                    }
                    adManagerAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzcec.zzh(new ObfuscatedString(new long[]{395240286142967105L}).toString(), e2);
            }
            zzcdv.zza.post(new zzbls(this, adManagerAdView, zzbuVar));
        }
    }
}
