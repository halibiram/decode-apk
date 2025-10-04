package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoController;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdsj extends VideoController.VideoLifecycleCallbacks {
    private final zzdna zza;

    public zzdsj(zzdna zzdnaVar) {
        this.zza = zzdnaVar;
    }

    @Nullable
    private static com.google.android.gms.ads.internal.client.zzdt zza(zzdna zzdnaVar) {
        com.google.android.gms.ads.internal.client.zzdq zzj = zzdnaVar.zzj();
        if (zzj == null) {
            return null;
        }
        try {
            return zzj.zzi();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zze();
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{5966283536348037114L, 5786242763894299649L, -6813644547017550828L, 8219020003070942679L, -2792358406829690217L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzg();
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-7729556095844730687L, 8230863425705261946L, -1100075750157682954L, -2049811467966179540L, 3938640469694174672L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        com.google.android.gms.ads.internal.client.zzdt zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzi();
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{2932697499210832445L, -7779576866277855512L, 6750937720469946974L, -6442917881687037840L, -6044046586580852605L}).toString(), e);
        }
    }
}
