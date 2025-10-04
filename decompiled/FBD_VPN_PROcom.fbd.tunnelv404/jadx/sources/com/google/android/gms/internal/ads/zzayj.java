package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzayj extends zzayg implements zzayl {
    public zzayj(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3149115342903556297L, 4391992910220014762L, 450579071973868095L, 6919902284228999061L, -1892234390177837392L, 8573660165614390906L, -3269926640980493801L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zze(IObjectWrapper iObjectWrapper, String str) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(new ObfuscatedString(new long[]{6552305327015081699L, -8014369363960462687L}).toString());
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzf() {
        zzbm(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzh(int[] iArr) {
        Parcel zza = zza();
        zza.writeIntArray(null);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzi(int i) {
        Parcel zza = zza();
        zza.writeInt(0);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzj(byte[] bArr) {
        Parcel zza = zza();
        zza.writeByteArray(bArr);
        zzbm(5, zza);
    }
}
