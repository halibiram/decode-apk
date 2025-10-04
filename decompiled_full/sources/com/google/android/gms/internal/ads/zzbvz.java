package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbvz implements NativeCustomFormatAd.DisplayOpenMeasurement {
    private final zzbkg zza;

    public zzbvz(zzbkg zzbkgVar) {
        this.zza = zzbkgVar;
        try {
            zzbkgVar.zzm();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7384528355572984753L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zza.zzp(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7262570341112309459L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8784017294828281137L}).toString(), e);
            return false;
        }
    }
}
