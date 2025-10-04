package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzeei implements zzgej {
    final /* synthetic */ zzbza zza;

    public zzeei(zzeem zzeemVar, zzbza zzbzaVar) {
        this.zza = zzbzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        try {
            this.zza.zze(com.google.android.gms.ads.internal.util.zzbb.zzb(th));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{6270506102234558547L, 1165407303619912775L, 7067528787841359631L, -2902813055910995980L, -7410564324802375591L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zzf((ParcelFileDescriptor) obj);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-8213144363538651621L, -3336873776572001409L, 521426908719355617L, 6871599270745333977L, 1664075436097044392L}).toString(), e);
        }
    }
}
