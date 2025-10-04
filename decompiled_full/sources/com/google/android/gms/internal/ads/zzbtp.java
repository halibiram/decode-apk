package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbtp implements InitializationCompleteCallback {
    final /* synthetic */ zzbph zza;

    public zzbtp(zzbtv zzbtvVar, zzbph zzbphVar) {
        this.zza = zzbphVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zza.zze(str);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5374346316815393496L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8738613825157815430L}).toString(), e);
        }
    }
}
