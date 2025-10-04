package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-2438280687781104869L, -1491939951571844812L, -2837021291122300715L, 1064134445978177528L, -8393832680326926372L, -6595996860833287327L, 3506282964779280983L, -3841047051704078082L, -7635927953909000384L, -2237091775546525013L}).toString());
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final String zzc() {
        Parcel zzb = zzb(1, zza());
        String readString = zzb.readString();
        zzb.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zzd() {
        Parcel zzb = zzb(6, zza());
        boolean zzb2 = zzc.zzb(zzb);
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zze(boolean z) {
        Parcel zza = zza();
        zzc.zza(zza, true);
        Parcel zzb = zzb(2, zza);
        boolean zzb2 = zzc.zzb(zzb);
        zzb.recycle();
        return zzb2;
    }
}
