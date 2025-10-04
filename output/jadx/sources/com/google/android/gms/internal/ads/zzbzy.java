package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbzy extends zzayg implements zzcaa {
    public zzbzy(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{297909019363047150L, 3767963128747544514L, -1718335680085156546L, 3410628070310130601L, -7232573535405806767L, -519588323661413005L, -4459951212402641006L, 2061192035719000197L, 6255510398276558478L, 9201653140189290479L, 8810226201268530304L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zze(zzbzu zzbzuVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbzuVar);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzf() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzh() {
        zzbm(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzi() {
        zzbm(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzj() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzk() {
        zzbm(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaa
    public final void zzl() {
        zzbm(3, zza());
    }
}
