package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcav extends zzayg implements IInterface {
    public zzcav(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2198755332852628322L, -3555504918288490473L, 4377206208321173933L, 6914125845128979098L, 5326370182781781739L, 3599077501533407411L, -5584445123113788144L, 3520878518604332760L, -239458131439444191L, -1359180679336546904L, -4959697802079469540L}).toString());
    }

    public final void zze(zzcak zzcakVar, String str, String str2) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcakVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzbm(2, zza);
    }
}
