package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzg extends zza implements IInterface {
    public zzg(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{531994825726467862L, 4087386468330551916L, -5303165450193984814L, 7522722369115903096L, 5528330388602765149L, -8123923848651577404L, 8065572509350333998L, 7387541255509566506L}).toString());
    }

    public final void zzc(com.google.android.gms.appset.zza zzaVar, zzf zzfVar) {
        Parcel zza = zza();
        zzc.zzb(zza, zzaVar);
        zzc.zzc(zza, zzfVar);
        zzb(1, zza);
    }
}
