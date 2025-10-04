package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcas extends zzayg implements zzcau {
    public zzcas(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4006002057733792419L, 157805026904131796L, 3766955619077375905L, -8246175645260666740L, 8563760781036575697L, 5534108365705970926L, -2222580441546882623L, 243703973936179473L, 4028890329124060637L, 5344323943899925893L, 2352276398602973341L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcau
    public final void zze(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcau
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcau
    public final void zzg() {
        zzbm(1, zza());
    }
}
