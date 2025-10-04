package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzeev implements zzgej {
    final /* synthetic */ zzbyx zza;

    public zzeev(zzeew zzeewVar, zzbyx zzbyxVar) {
        this.zza = zzbyxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        try {
            this.zza.zze(com.google.android.gms.ads.internal.util.zzbb.zzb(th));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-5024289960643251079L, -8105016137859577191L, -9005428203495190085L, 1914743891150803123L, -2746168238806331171L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zzf((ParcelFileDescriptor) obj);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{6924608558278799885L, 7522487866644936769L, -5994304902462209445L, 1972483342775800237L, -8245664679766649018L}).toString(), e);
        }
    }
}
