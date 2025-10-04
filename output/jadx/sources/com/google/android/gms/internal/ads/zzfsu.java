package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfsu extends zzayg implements zzfsw {
    public zzfsu(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1123343184592519589L, -7007589026800283007L, 3290625193092826441L, 4530339297460209633L, -5134150575325692162L, -1648891108321927077L, -159344126687487898L, 3473703532125643165L, -2291837599151325618L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zze(IObjectWrapper iObjectWrapper, String str, String str2) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeString(null);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zzf() {
        zzbm(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zzh(int[] iArr) {
        Parcel zza = zza();
        zza.writeIntArray(null);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zzi(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final void zzj(byte[] bArr) {
        Parcel zza = zza();
        zza.writeByteArray(bArr);
        zzbm(5, zza);
    }
}
